<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "manager".
 *
 * @property int $id
 * @property string $fio
 * @property int $oklad
 *
 * @property Stat[] $stats
 */
class Manager extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'manager';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['fio', 'oklad'], 'required'],
            [['oklad'], 'integer'],
            [['fio'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'fio' => 'Fio',
            'oklad' => 'Oklad',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getStats()
    {
        return $this->hasMany(Stat::className(), ['manager_id' => 'id']);
    }
}
