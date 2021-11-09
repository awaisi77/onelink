<?php
/**
 * Created by PhpStorm.
 * User: mawaisu
 * Date: 9/12/2018
 * Time: 4:25 PM
 */

namespace App\CommonUtils;


use App\TempQuestion;
use Carbon\Carbon;
use http\Env\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;
use Monolog\Handler\StreamHandler;
use Monolog\Logger;
use Illuminate\Support\Facades\Mail;
use Exception;

class HelperFunctions
{

    public static function writeLogInfo($desc=" ",$type="info"){

        $today = Carbon::now()->toDayDateTimeString();
        $log = "['description' => $desc
            ,'date'=>$today
        ]";
        if($type=="info") {
            Log::info($log);
        }
        else{
            Log::error($log);
        }
      /*  $orderLog = new Logger("M Awais Ullah");
        $orderLog->pushHandler(new StreamHandler(storage_path('logs/'.$today.'.log')), Logger::INFO);
        $orderLog->info('OrderLog', $log);*/
    }


}
