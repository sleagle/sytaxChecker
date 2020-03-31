from django.db import models


# Create your models here.
class Noun(models.Model):
    noun_id = models.AutoField(primary_key=True, null=False)
    content = models.CharField(max_length=100)

    class Meta:
        db_table = "noun"


class Tense(models.Model):
    tense_id = models.AutoField(primary_key=True, null=False)
    tense = models.CharField(max_length=15)

    class Meta:
        db_table = "tense"


class Verb(models.Model):
    verb_id = models.AutoField(primary_key=True, null=False)
    verb = models.CharField(max_length=100)
    tense = models.ForeignKey(Tense, on_delete=models.CASCADE)
    noun = models.ForeignKey(Noun, on_delete=models.CASCADE)

    class Meta:
        db_table = "verb"


class TimeAdverb(models.Model):
    id = models.AutoField(primary_key=True, null=False)
    content = models.CharField(max_length=100)
    tense = models.ForeignKey(Tense, on_delete=models.CASCADE)

    class Meta:
        db_table = "time_adverb"


class Object(models.Model):
    object_id = models.AutoField(primary_key=True, null=False)
    object = models.CharField(max_length=100)

    class Meta:
        db_table = "object"


class NounResponse:
    noun_id: int
    noun: str
    comment: str


class VerbResponse:
    verb_id: int
    verb: str
    tense: str
    noun_type: str
    comment: str


class AdverbResponse:
    adverb_id: int
    adverb: str
    tense: str
    comment: str


class ResponseObject:
    noun_details: NounResponse
    verb_details: VerbResponse
    adverb_details: AdverbResponse
    status: str
    details: str

