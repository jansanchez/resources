<?php 

class App_Config
{
    static $_version;

    /**
     * Extrae la versión del archivo last_commit
     * return string last_commit
     */
    static function getVersion()
    {

        /*implementacion de versionado @jansanchez*/

        if (!isset(self::$_version)) {
            //ubicacion del archivo last_commit
            $filename = APPLICATION_PATH.'/last_commit';
            
            if(is_readable($filename)){
                self::$_version = trim(file_get_contents($filename)); 
            }else{
                $nuevaVersion = @include($filename);
                self::$_version = trim($nuevaVersion);
            }
            if(trim(self::$_version)==''){
                self::$_version = date('dm');
            }
        }
        return self::$_version;
    }

    /**
     * Retorna la version de los elementos estaticos
     * return string last_commit
     */
    static function getStaticVersion() {
       return '?v=' . self::getVersion();
    }
}

/*
ejemplo de implementacion el el layout.phtml

<link type="text/css" rel="stylesheet" href="styles/layout.css<?php echo App_Config::getStaticVersion(); ?>" media="all">
*/