#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�[E$  ���Tp}���~�ގ����  D   � P P-�8���4�y$�M=O$�e4d  b MG�ɚ� JD�M2hɨ�&OPh 4     *d��O�<Б��G�4z��6���z������!�� d40F��4hA� � 
cS���4~����4���� ��!�l��QDD�3ãRd���~h()hv�j4o���$�j:��K���sn��3e�7e\�!*�6%��)�Ġ�DeMA�H2���%	A+8	��~6����Q\L$�Qaŷ��O�a��>��r:	�B6Χ@0�B�t�jN��M�ɞ+��B��j���R�ge�L��y�#H�MjUɥ�����ݐ��&���,��Y#<�7Mg��o�"�~k�I䭑d��N�Ts,%�xECбm�\�'�l�2�u���n��E=
�	�f��e$�&��B�Uuo���UDn�5X�C�+�d�1��+w�?o;6�:B��pT�Y�s���ct!��&Y!E·"q�g%�
�ZN��ѽ�""�W[�=��e�$��y�ә[oc��a�]	V���+�Y\ӧ&���\]0�Q� ���Q#4a��TXħ��E Y���&��B�t�%���Hxp�WPČ�R$���X�D���BL� �	f/�'�\��9m)o�"&\CGr4f��A�@��P�Ps+��QK�pQ�8�R��RLh(1����	��/HG�Ap�=�Ph)a���d+��4�h�����@F��%<a��%zG��Wˈ^�gX,m(�,�`��ς��^	���3J�� �j�=ϼ�:E���¤���h�Һ?T$-��B={=�R',F�ё0��b�![��,jN�"�i(��T%$u@D�5oV���H*B�t��Sx�����ӝFpo��R��VsG�H��/��8�Ԓ@��<���"�(Hs-�� 