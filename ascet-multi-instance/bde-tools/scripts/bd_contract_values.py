"""Scalar shape rules shared by Python tool contracts.

String limits count UTF-16 code units, matching the existing Zod/JavaScript
schemas. This is distinct from the UTF-8 byte budget of returned documents.
"""


def text_length(value):
    return len(value.encode('utf-16-le','surrogatepass'))//2


def bounded_text(value,minimum=1,maximum=256):
    return isinstance(value,str) and minimum<=text_length(value)<=maximum
