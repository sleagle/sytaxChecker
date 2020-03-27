# Generated by Django 3.0.3 on 2020-03-26 12:27

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('SyntaxCheckerApp', '0003_auto_20200326_1226'),
    ]

    operations = [
        migrations.CreateModel(
            name='Noun',
            fields=[
                ('noun_id', models.AutoField(primary_key=True, serialize=False)),
                ('content', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'noun',
            },
        ),
        migrations.CreateModel(
            name='Object',
            fields=[
                ('object_id', models.AutoField(primary_key=True, serialize=False)),
                ('object', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'object',
            },
        ),
        migrations.CreateModel(
            name='Tense',
            fields=[
                ('tense_id', models.AutoField(primary_key=True, serialize=False)),
                ('tense', models.CharField(max_length=15)),
            ],
            options={
                'db_table': 'tense',
            },
        ),
        migrations.CreateModel(
            name='Verb',
            fields=[
                ('verb_id', models.AutoField(primary_key=True, serialize=False)),
                ('verb', models.CharField(max_length=100)),
                ('noun', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SyntaxCheckerApp.Noun')),
                ('tense', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SyntaxCheckerApp.Tense')),
            ],
            options={
                'db_table': 'verb',
            },
        ),
        migrations.CreateModel(
            name='TimeAdverb',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('content', models.CharField(max_length=100)),
                ('tense', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SyntaxCheckerApp.Tense')),
            ],
            options={
                'db_table': 'time_adverb',
            },
        ),
    ]