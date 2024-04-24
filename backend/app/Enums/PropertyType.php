<?php

namespace App\Enums;

use BenSampo\Enum\Enum;

/**
 * @method static static OptionOne()
 * @method static static OptionTwo()
 * @method static static OptionThree()
 */
final class PropertyType extends Enum
{
    const INPUT_TEXT = 0;
    const INPUT_NUMBER = 1;
    const INPUT_DATE = 2;
    const SELECT_SINGLE = 3;
    const SELECT_MULTIPLE = 4;
}
