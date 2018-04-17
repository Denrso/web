<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'Зар. плата';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">

    <h1>Эффективность</h1>
    <table class="table table-condensed">
        <tbody>
        <?php foreach ($data as $d) {
            echo "<tr><td>".$d['manager']['fio']."</td><td>".$d['calls']." звонков</td></tr>";

        }?>
        </tbody>
    </table>

    <?php #print_r($data)?>
    <h1><?= Html::encode($this->title) ?></h1>
    <table class="table table-condensed">
        <tbody>
        <?php foreach ($zp as $i) {
            echo "<tr><td>".$i['manager']."</td><td>".$i['zarplata']." руб (бонус-".$i['bonus']."руб)</td></tr>";

        }?>
        </tbody>
    </table>

</div>
