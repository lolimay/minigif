#!/bin/sh

# import from './locales.sh'

# The MIT License (MIT)

# Copyright (c) 2019 lolimay <lolimay@lolimay.cn>

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Get system locale information
getLocale()
{
    currentLanguage=`echo $LANG`
    isCN=`contains $currentLanguage "zh_CN"`

    if [ "$isCN" == "1" ];then
        echo 1
    else
        echo 0
    fi
}

# Localization
localize()
{
    isLocaleCN=`getLocale`
    if [ "$isLocaleCN" == "1" ];then
        echo -e $1
    else
        echo -e $2
    fi
}

# Localization with nowrap
localize_n()
{
    isLocaleCN=`getLocale`
    if [ "$isLocaleCN" == "1" ];then
        echo -ne $1
    else
        echo -ne $2
    fi
}