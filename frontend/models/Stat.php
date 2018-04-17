<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "stat".
 *
 * @property int $id
 * @property int $manager_id
 * @property string $date
 * @property int $calls
 *
 * @property Manager $manager
 */
class Stat extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'stat';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['manager_id', 'date'], 'required'],
            [['manager_id', 'calls'], 'integer'],
            [['date'], 'safe'],
            [['manager_id'], 'exist', 'skipOnError' => true, 'targetClass' => Manager::className(), 'targetAttribute' => ['manager_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'manager_id' => 'Manager ID',
            'date' => 'Date',
            'calls' => 'Calls',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getManager()
    {
        return $this->hasOne(Manager::className(), ['id' => 'manager_id']);
    }
}
