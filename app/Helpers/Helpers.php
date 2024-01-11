<?php

namespace App\Helpers;

use App\Models\Banniere;
use App\Models\Label;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use Intervention\Image\Constraint;
use Carbon\Carbon;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Str;
use Owenoj\LaravelGetId3\GetId3;
use Illuminate\Support\Facades\Auth;


class Helpers
{
    public static function dateEnFrancais($created_at)
    {
        //  à H\hi
        return Carbon::parse($created_at)->translatedFormat('d F Y');
    }

    public static function getLastWord($string)
    {
        preg_match('/[^ ]*$/', $string, $results);
        $last_word = $results[0];
        return $last_word;
    }

    public static function removeLastWord($string)
    {
        preg_match('/[^ ]*$/', $string, $results);
        $last_word = $results[0];

        $wordLeft = str_replace($last_word, '', $string);
        return $wordLeft;
    }

    public static function dateFormat($created_at)
    {
        if (App::getLocale() == 'fr') {
            $resultat = strftime("%d %B %G", strtotime($created_at));
        }

        if (App::getLocale() == 'en') {
            $resultat = strftime("%B %d, %G", strtotime($created_at));
        }

        return $resultat;
    }

    public static function saveImage($file, $folder, int $width = 1800)
    {
        $fullFilename = null;
        $resizeWidth = $width;
        $resizeHeight = null;

        //$slug = $request->input('type_slug');
        //$file = $request->file('image');

        $path = '/' . date('F') . date('Y') . '/';

        $filename = basename($file->getClientOriginalName(), '.' . $file->getClientOriginalExtension());
        $filename_counter = 1;

        // Make sure the filename does not exist, if it does make sure to add a number to the end 1, 2, 3, etc...
        while (Storage::disk(config('voyager.storage.disk'))->exists($path . $filename . '.' . $file->getClientOriginalExtension())) {
            $filename = basename($file->getClientOriginalName(), '.' . $file->getClientOriginalExtension()) . (string) ($filename_counter++);
        }

        $fullPath = $folder . $path . $filename . '.' . $file->getClientOriginalExtension();

        $ext = $file->guessClientExtension();

        if (in_array($ext, ['jpeg', 'jpg', 'png', 'gif'])) {
            $image = Image::make($file)
                ->resize($resizeWidth, $resizeHeight, function (Constraint $constraint) {
                    $constraint->aspectRatio();
                    $constraint->upsize();
                });
            if ($ext !== 'gif') {
                $image->orientate();
            }
            $image->encode($file->getClientOriginalExtension(), 75);

            // move uploaded file from temp to uploads directory
            if (Storage::disk(config('voyager.storage.disk'))->put($fullPath, (string) $image, 'public')) {
                $status = __('voyager::media.success_uploading');
                $fullFilename = $fullPath;
            } else {
                $status = __('voyager::media.error_uploading');
            }
        } else {
            $status = __('voyager::media.uploading_wrong_type');
        }

        // echo out script that TinyMCE can handle and update the image in the editor
        return $fullFilename;
    }

    public static function saveVideo($file, $name, $storage)
    {
        $fileName = $name;

        $path_date = '/' . date('F') . date('Y') . '/';
        $filePath = $file->storeAs($storage . $path_date, $fileName, 'public');

        $info = [
            'file_name' => $fileName,
            'file_path' => $filePath,
        ];

        return $info;
    }

    public static function videoReadingTime($file)
    {
        $track = new GetId3($file);
        $track->extractInfo();

        $time = $track->getPlaytimeSeconds();

        return $time;
    }

    public static function image($link, String $thumbnail = null)
    {
        $img = null;
        $ext = Str::afterLast($link, '.');

        if ($thumbnail != null) {
            $img = Str::beforeLast($link, '.') . '-' . $thumbnail . '.' . $ext;
        } else {
            $img = $link;
        }
        return asset('storage') . '/' . $img;
    }

    public static function startWithVoyelle($term, $de = "")
    {
        $voyelles = array('a', 'e', 'i', 'o', 'u', 'y');
        $result = $term;
        foreach ($voyelles as $voyelle) {
            // dd(Str::lower($voyelle));
            if (Str::startsWith(Str::lower($term), $voyelle)) {

                $result = $de . '\'' . $result;
                return $result;
            }
        }
        return 'de ' . $result;
    }

    public static function extraireDownloadLink($link)
    {
        $result = json_decode($link);

        if (!empty($result)) {
            if (count($result) != 0) {
                $download_link = asset('storage') . '/' . $result[0]->download_link;
            } else {
                $download_link = "";
            }
        } else {
            $download_link = asset('storage') . '/' . $link;
        }

        return $download_link;
    }

    public static function getTimeAgo($date)
    {
        $time = strtotime($date);
        $diff_time = time() - $time;

        if ($diff_time < 1) {
            return 'à l\'instant';
        }

        $sec = array(
            31556926    => 'an',
            2629743.83  => 'mois',
            86400       => 'jour',
            3600        => 'heure',
            60          => 'minute',
            1           => 'seconde'
        );

        foreach ($sec as $sec => $value) {
            $div = $diff_time / $sec;
            if ($div >= 1) {
                $time_ago = round($div);
                $time_type = $value;

                if ($time_ago > 1 && $time_type != 'mois') {
                    $time_type .= "s";
                }

                return 'il y a ' . $time_ago . ' ' . $time_type;
            }
        }
    }

    public static function cutText($contenu, $limit)
    {
        if (strlen($contenu) < $limit) {
            $resultat = $contenu;
        } else {
            $resultat = substr($contenu, 0, strpos($contenu, ' ', $limit)) . ' ...';
        }

        return $resultat;
    }

    public static function cutTextStripTags($contenu, $limit)
    {
        $contenu = strip_tags($contenu);

        if (strlen($contenu) < $limit) {
            $resultat = $contenu;
        } else {
            $resultat = substr($contenu, 0, strpos($contenu, ' ', $limit)) . ' ...';
        }

        return $resultat;
    }

    public static function cutTextAddReadMoreLink($contenu, $link, $limit)
    {
        if (strlen($contenu) < $limit) {
            $resultat = $contenu;
        } else {
            $resultat = substr($contenu, 0, strpos($contenu, ' ', $limit)) . ' ... <a class="btn btn-outline-primary mt-3" href="' . $link . '">Lire plus</a>';
        }

        return $resultat;
    }

    public static function cutText3($contenu, $limit)
    {
        if (strlen($contenu) < $limit) {
            $resultat = $contenu;
        } else {
            $resultat = Str::limit($contenu, strpos($contenu, ' ', $limit), '...');
        }

        return $resultat;
    }

    public static function cutWord($body, $limit)
    {
        $resultat = Str::words($body, $limit, '...');
        return $resultat;
    }

    public static function stripTagsCutWord($contenu, $limit, $link)
    {
        $wordsCount = count(explode(' ', strip_tags($contenu)));

        if ($wordsCount < $limit) {
            $resultat = $contenu;
        } else {
            $resultat = Str::words(
                strip_tags($contenu, '<span>'),
                $limit,
                ' ... <a href="' . $link . '" class="">Lire plus</a>'
            );
        }

        return $resultat;
    }

    public static function getValue($key)
    {
        $banniere = Banniere::where([
            ['key', '=', $key]
        ])->get();

        return $banniere[0]->value;
    }

    public static function getLab($key)
    {
        $label = Label::where([
            ['key', '=', $key]
        ])->get();
            // dd($label[0]->getTranslatedAttribute('value', app()->getLocale(), 'fallbackLocale'));
        // return $label[0]->value;
        return $label[0]->getTranslatedAttribute('value', app()->getLocale(), 'fallbackLocale');
    }

    public static function is_user_online($user_id)
    {

        if (\Illuminate\Support\Facades\Cache::has('user-is-online-' . $user_id)) {
            return 'user-online';
        } else {
            return 'user-offline';
        }
    }

    public static function covtime($youtube_time)
    {
        preg_match_all('/(\d+)/', $youtube_time, $parts);

        // Put in zeros if we have less than 3 numbers.
        if (count($parts[0]) == 1) {
            array_unshift($parts[0], "0", "0");
        } elseif (count($parts[0]) == 2) {
            array_unshift($parts[0], "0");
        }

        $sec_init = $parts[0][2];
        $seconds = $sec_init % 60;
        $seconds_overflow = floor($sec_init / 60);

        $min_init = $parts[0][1] + $seconds_overflow;
        $minutes = ($min_init) % 60;
        $minutes_overflow = floor(($min_init) / 60);

        $hours = $parts[0][0] + $minutes_overflow;

        if ($hours != 0)
            return $hours . ':' . $minutes . ':' . $seconds;
        else
            return $minutes . ':' . $seconds;
    }

    public static function getYoutubeVideoId($url)
    {



        parse_str(parse_url($url, PHP_URL_QUERY), $my_array_of_vars);

        // dd($my_array_of_vars['watch']);

        if (isset($my_array_of_vars['v'])) {

            $url_id = $my_array_of_vars['v'];
            return $url_id;
            // dd($url_id);

        } else {
            // dd(substr($url, -11));
            return substr($url, -11);
        }

        // $url_id = $my_array_of_vars['v'];

        // return $url_id;

    }

    public static function verifyPhoneNumber($phone){
        if (strlen($phone) == '10') {
            if (substr($phone, -10, 1) == '0') {
                $phone = '+243' . substr($phone, -9);
            }else {
                $message = "Votre numero n'est pas valide";
            }
        }elseif (strlen($phone) == '12') {
            if (substr($phone, -12, 3) == '243') {
                $phone = '+243' . substr($phone, -9);
            }else {
                $message = "Votre numero n'est pas valide";
            }
        }elseif (strlen($phone) == '13') {
            if (substr($phone, -13, 4) == '+243') {
                $phone = $phone;
            }else {
                $message = "Votre numero n'est pas valide";
            }
        }elseif (strlen($phone) == '14') {
            if (substr($phone, -14, 5) == '00243') {
                $phone = '+243' . substr($phone, -9);
            }else {
                $message = "Votre numero n'est pas valide";
            }
        } else {
            $message = "Votre numero n'est pas valide";
        }

        if (isset($message)) {
            return;
        } else {
            return $phone;
        }

    }
    // public static function getValue($key){
    //     $label = Label::where([
    //         ['key', '=', $key]
    //     ])->get();

    //     return $label[0]->value;
    // }
}
if (!function_exists('is_user_online')) {
    /**
     *
     * @param mixed
     */

    function is_user_online($user_id)
    {

        if (\Illuminate\Support\Facades\Cache::has('user-is-online-' . $user_id)) {
            return 'user-online';
        } else {
            return 'user-offline';
        }
    }
}
