from SyntaxCheckerApp.models import Noun, Verb, TimeAdverb, Object
from SyntaxCheckerApp.models import NounResponse, VerbResponse, AdverbResponse, ResponseObject


def validate_grammar(sentence_breakdown,sentence_len ):

    noun_response = NounResponse()
    verb_response = VerbResponse()
    adverb_response = AdverbResponse()

    # checking if the 1st word is a noun
    try:
        noun_obj = Noun.objects.get(content=sentence_breakdown[0])
        noun_response.noun_id = noun_obj.noun_id
        noun_response.noun = noun_obj.content
        noun_response.comment = "is a noun"

    except Noun.DoesNotExist:
        noun_response.noun_id = 0
        noun_response.noun = sentence_breakdown[0]
        noun_response.comment = "is not a noun"

    # checking if the last word is a verb
    try:
        verb_obj = Verb.objects.get(verb=sentence_breakdown[sentence_len - 1])
        verb_response.verb_id = verb_obj.verb_id
        verb_response.verb = verb_obj.verb
        verb_response.noun_type = verb_obj.noun_id
        verb_response.tense = verb_obj.tense
        verb_response.comment = "is a verb"

    except Verb.DoesNotExist:
        verb_response.verb_id = 0
        verb_response.verb = sentence_breakdown[sentence_len - 1]
        verb_response.noun_type = -1
        verb_response.comment = "is not a verb"

    try:
        adverb_obj = TimeAdverb.objects.get(content=sentence_breakdown[1])
        adverb_response.adverb_id = adverb_obj.id
        adverb_response.adverb = adverb_obj.content
        adverb_response.tense = adverb_obj.tense
        adverb_response.comment = "is an adverb"

    except TimeAdverb.DoesNotExist:
        adverb_response.adverb_id = -1
        adverb_response.adverb = "None"
        adverb_response.tense = -1
        adverb_response.comment = "not an adverb"

    response_obj = ResponseObject()
    response_obj.noun_details = noun_response
    response_obj.verb_details = verb_response
    response_obj.adverb_details = adverb_response

    if noun_response.noun_id == 0:
        response_obj.status = "Incorrect Grammar"
        response_obj.details = "First word is not a Noun"

    elif verb_response.verb_id == 0:
        response_obj.status = "Incorrect Grammar"
        response_obj.details = "Last word is not a Verb"

    elif noun_response.noun_id != verb_response.noun_type:
        response_obj.status = "Incorrect Grammar"
        response_obj.details = "Verb does not comply to the noun"

    elif adverb_response.adverb_id != -1 and adverb_response.tense != verb_response.tense:
        response_obj.status = "Incorrect Grammar"
        response_obj.details = "Adverb tense does not comply to the Verb Tense"

    else:
        response_obj.status = "Correct grammar"

    return response_obj
