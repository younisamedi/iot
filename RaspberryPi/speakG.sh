    #!/bin/bash

    # Copyright (c) 2020 - Younis Amedi www.younisamedi.com 
    # This script is licensed under GNU GPL version 2.0 or above
    #=========================================================================================
    #title           : speakG.sh
    #description     : this script uses Google Translate voice (close to natural speaking) to read your text or text in a file
    #date            : MAY 2019
    #version         : 1.0    
    #usage           : You can provide text as argument or read from a file, see the example:
    # E.g:
    # speakG.sh "$(< MyFile.txt)"
    #
    #dependencies    : If "mplayer" is not installed by default, please install it
    #=========================================================================================

    if [ $# -eq 0 ]; then
        echo "ERROR: type something... E.g: $0 'Hello there...' or provide a text file \$(< MyFile.txt) "
        exit 1
    fi

    # If the device hasn't been connected to the internet for a while, you may need to enable this optoin:
    # ping -c 1 translate.google.com > /dev/null

    speakG() { local IFS=+;/usr/bin/mplayer -ao alsa -really-quiet -noconsolecontrols "http://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=$*&tl=en"; }
    speakG $*

    # END
