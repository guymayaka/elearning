<?php

namespace App\Helpers;

use Illuminate\Support\Str;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use Intervention\Image\Constraint;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Pagination\Paginator;
use Carbon\Carbon;
use InvalidArgumentException;


class FrontEnd
{
    protected $actions = [
        DeleteAction::class,
        RestoreAction::class,
        EditAction::class,
        ViewAction::class,
    ];

    public function actions()
    {
        return $this->actions;
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

        $fullPath = $folder . $path . $filename . '-' . time() . '.' . $file->getClientOriginalExtension();

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

    public static function dateEnFrancais($created_at)
    {
        //  à H\hi
        return Carbon::parse($created_at)->translatedFormat('d F Y');
    }

    /* Nouvelles fonctions */
    public static function DateFormat($created_at)
    {
        if (\App::getLocale() == 'fr') {
            $resultat = strftime("%d %B %G", strtotime($created_at));
        }

        if (\App::getLocale() == 'en') {
            $resultat = strftime("%B %d, %G", strtotime($created_at));
        }

        return $resultat;
    }

    public static function wrapWord($str, int $lenth = 0, $remove_html = true, $pad = " ...")
    {
        $str = html_entity_decode($str);
        if ($remove_html) {
            $str = strip_tags($str);
        }
        $str = preg_replace(array('/\s{2,}/', '/[\t\n]/'), ' ', $str);
        if (strlen($str) <= $lenth) {
            return $str;
        }
        $newstring = substr($str, 0, strrpos(substr($str, 0, $lenth), ' '));
        return $newstring . $pad;
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

    public static function cutTextAddReadMoreLink($contenu, $link, $limit)
    {
        if (strlen($contenu) < $limit) {
            $resultat = $contenu;
        } else {
            $resultat = substr($contenu, 0, strpos($contenu, ' ', $limit)) . ' ... <a href="' . $link . '">Lire plus</a>';
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
            //
            $resultat = Str::words(
                strip_tags($contenu, '<span>'),
                $limit,
                ' ... <a href="' . $link . '" class="">Lire plus</a>'
            );
        }

        return $resultat;
    }

    public static function image2($subject)
    {
        return !empty($subject) && $subject !== null ? asset('storage') . "/" . str_replace('\\', '/', $subject) : "#";
    }

    public static function tempsLecture($content)
    {
        $word_count = str_word_count(strip_tags($content));

        $minutes = floor($word_count / 250);
        $seconds = floor($word_count % 250 / (250 / 60));

        $str_minutes = ($minutes == 1) ? "minute" : "minutes";
        $str_seconds = ($seconds == 1) ? "seconde" : "secondes";

        if ($minutes == 0) {
            return "{$seconds} {$str_seconds}";
        } else {
            return "environ {$minutes} {$str_minutes} et {$seconds} {$str_seconds}";
        }
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

    public static function extraireDownloadLink($link)
    {
        $result = json_decode($link);

        if (count($result) != 0) {
            $download_link = $result[0]->download_link;
        } else {
            $download_link = "";
        }

        return $download_link;
    }


    public static function cutTextAndCloseTags($text, $limit)
    {

        $html = self::cutText($text, $limit);

        preg_match_all('#<([a-z]+)(?: .*)?(?<![/|/ ])>#iU', $html, $result);
        $openedtags = $result[1];

        preg_match_all('#</([a-z]+)>#iU', $html, $result);
        $closedtags = $result[1];
        $len_opened = count($openedtags);
        if (count($closedtags) == $len_opened) {
            return $html;
        }
        $openedtags = array_reverse($openedtags);
        for ($i = 0; $i < $len_opened; $i++) {
            if (!in_array($openedtags[$i], $closedtags)) {
                $html .= '</' . $openedtags[$i] . '>';
            } else {
                unset($closedtags[array_search($openedtags[$i], $closedtags)]);
            }
        }
        return $html;
    }

    public static function customPagination($items, $perPage)
    {
        $pageStart           = request('page', 1);
        $offSet              = ($pageStart * $perPage) - $perPage;
        $itemsForCurrentPage = array_slice($items, $offSet, $perPage);

        return new LengthAwarePaginator(
            $itemsForCurrentPage,
            count($items),
            $perPage,
            Paginator::resolveCurrentPage(),
            ['path' => Paginator::resolveCurrentPath()]
        );
    }

    public static function customPaginationForRecherche($items, $perPage)
    {
        $pageStart           = request('page', 1);
        $offSet              = ($pageStart * $perPage) - $perPage;
        // $itemsForCurrentPage = array_slice($items, $offSet, $perPage);
        $itemsForCurrentPage = $items->slice($offSet, $perPage);

        // dd(Paginator::resolveCurrentPath().'?_token='.$_GET['_token'].'&term='.$_GET['term']);
        return new LengthAwarePaginator(
            $itemsForCurrentPage,
            count($items),
            $perPage,
            Paginator::resolveCurrentPage(),
            ['path' => Paginator::resolveCurrentPath() . '?_token=' . $_GET['_token'] . '&recherche=' . $_GET['recherche']]
        );
    }

    public static function getLabelByKeyAndCategory($clef, $catSlug)
    {
        $labelCat = FrontEnd::getLabelCatbyLabelCatSlug($catSlug);
        $labelKey = FrontEnd::getLabelKeybyLabelKeySlug($clef);

        $resultat = Label::where([
                ['id_categorie', '=', $labelCat->value('id')],
                ['id_clef', '=', $labelKey->value('id')],
            ])
            ->inRandomOrder()
            ->limit(1);
        return $resultat;
    }

    public static function removeImage($image)
    {
        if (file_exists(public_path($image))) {
            unlink(public_path($image));
        } else {
            return;
        }
    }

    public function removeImage2($image)
    {
        if (File::exists(public_path($image))) {
            File::delete(public_path($image));
        } else {
            return;
        }
    }
}
