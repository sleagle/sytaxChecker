# Generated by Django 3.0.3 on 2020-03-26 12:14

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Noun',
            fields=[
                ('noun_id', models.IntegerField(default=1, primary_key=True, serialize=False)),
                ('content', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'noun',
            },
        ),
    ]
