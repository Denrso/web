<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "bonus".
 *
 * @property int $id
 * @property int $calls
 * @property int $cost
 */
class Bonus extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'bonus';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['calls', 'cost'], 'required'],
            [['calls', 'cost'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'calls' => 'Calls',
            'cost' => 'Cost',
        ];
    }
}
