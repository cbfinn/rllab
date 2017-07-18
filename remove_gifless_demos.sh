#!/bin/bash

declare -a test_ids=('100' '12' '120' '123' '126' '129' '13' '131' '134' '140' '155' '163' '167' '168' '180' '181' '182' '192' '195' '2' '200' '201' '208' '21' '217' '22' '226' '229' '23' '233' '237' '24' '240' '245' '246' '249' '252' '272' '277' '278' '28' '283' '285' '304' '307' '308' '309' '319' '325' '332' '344' '346' '347' '349' '350' '359' '364' '385' '399' '4' '403' '405' '407' '408' '417' '422' '427' '436' '439' '44' '449' '454' '458' '464' '465' '466' '481' '491' '496' '501' '51' '512' '514' '521' '541' '549' '551' '560' '585' '591' '615' '620' '621' '623' '625' '627' '632' '642' '655' '673' '682' '687' '697' '699' '700' '704' '705' '716' '718' '726' '736' '738' '746' '748' '749' '758' '76' '760' '764' '770' '772' '779' '781' '782' '786' '789' '79' '799' '809' '813' '816' '817' '831' '836' '837' '841' '85' '851' '852' '867' '868' '874' '876' '877' '879' '887' '893' '896' '897' '906' '91' '919' '922' '929' '93' '935' '936' '940' '956' '959' '971' '985')

#for i in "${test_ids[@]}"

for i in {1..1000}
do 
    if [   -f data/fixed_push_demos_filter_vision/train"$i".pkl ]; then
        if [  ! -f data/fixed_push_demos_filter_vision/train/object_"$i"/cond7.samp0.gif ]; then
            rm -r data/fixed_push_demos_filter_vision/train/object_"$i"
            rm data/fixed_push_demos_filter_vision/train"$i".pkl
            echo $i
        fi
    fi
done
