"""Complete rejection documents use error first pages and successful local reads."""
import copy
import json
import unittest

from bde_main_workflow import verify_pages


def pages(*, error=True):
    chunks = ['拒绝修改\n' * 600, 'original graph retained\n' * 200]
    total = len(''.join(chunks).encode('utf-8'))
    offset, calls = 0, []
    for index, chunk in enumerate(chunks):
        end = offset + len(chunk.encode('utf-8'))
        more = index == 0
        meta = dict(document='immutable-error-document',
                    page=dict(start_byte=offset, end_byte=end, has_more=more,
                              next_cursor='remaining-error-bytes' if more else None),
                    delivery=dict(total_bytes=total, delivered_bytes=end,
                                  status='partial' if more else 'complete'))
        calls.append(dict(tool='bd_edit' if index == 0 else 'bd_read',
                          args=dict(snapshot='before', preview=True) if index == 0
                          else dict(cursor='remaining-error-bytes'),
                          response=dict(is_error=error and index == 0, tool_dispatched=True,
                                        content=json.dumps(meta) + '\n\n' + chunk)))
        offset = end
    return calls, ''.join(chunks)


class RejectedPageVerificationTests(unittest.TestCase):
    def test_complete_paged_rejection_without_repeating_operation(self):
        calls, body = pages()
        verified = verify_pages(calls, body, 12288, expected_error=True)
        self.assertEqual(verified['pages'], 2)
        self.assertEqual(verified['bytes'], len(body.encode('utf-8')))
        self.assertGreater(verified['bytes'], 12288)

    def test_error_requires_explicit_expectation_and_success_cannot_replace_error(self):
        calls, body = pages()
        with self.assertRaisesRegex(ValueError, 'Formal tool dispatch failed'):
            verify_pages(calls, body, 12288)
        calls, body = pages(error=False)
        verify_pages(calls, body, 12288)
        with self.assertRaisesRegex(ValueError, 'Formal tool dispatch failed'):
            verify_pages(calls, body, 12288, expected_error=True)

    def test_error_on_continuation_is_not_a_successful_delivery(self):
        calls, body = pages()
        calls[1]['response']['is_error'] = True
        with self.assertRaisesRegex(ValueError, 'Formal tool dispatch failed'):
            verify_pages(calls, body, 12288, expected_error=True)

    def test_missing_final_page_and_document_tamper_are_rejected(self):
        original, body = pages()
        for mutation in ('missing', 'document', 'range', 'body', 'total'):
            with self.subTest(mutation=mutation):
                calls = copy.deepcopy(original)
                if mutation == 'missing':
                    calls = calls[:1]
                else:
                    head, chunk = calls[1]['response']['content'].split('\n\n', 1)
                    meta = json.loads(head)
                    if mutation == 'document': meta['document'] = 'another-document'
                    elif mutation == 'range': meta['page']['start_byte'] += 1
                    elif mutation == 'total': meta['delivery']['total_bytes'] += 1
                    elif mutation == 'body': chunk = chunk[:-1]
                    calls[1]['response']['content'] = json.dumps(meta) + '\n\n' + chunk
                with self.assertRaises(ValueError):
                    verify_pages(calls, body, 12288, expected_error=True)

    def test_continuation_must_be_cursor_only_read(self):
        original, body = pages()
        for tool, args in (('bd_edit', dict(cursor='remaining-error-bytes')),
                           ('bd_read', dict(cursor='remaining-error-bytes', component='other')),
                           ('bd_read', dict(cursor='different-cursor'))):
            with self.subTest(tool=tool, args=args):
                calls = copy.deepcopy(original)
                calls[1].update(tool=tool, args=args)
                with self.assertRaisesRegex(ValueError, 'Continuation'):
                    verify_pages(calls, body, 12288, expected_error=True)

    def test_single_page_rejection_uses_same_complete_contract(self):
        calls, _ = pages()
        head, body = calls[0]['response']['content'].split('\n\n', 1)
        meta = json.loads(head)
        meta['page'].update(has_more=False, next_cursor=None)
        meta['delivery'].update(total_bytes=meta['page']['end_byte'], status='complete')
        calls[0]['response']['content'] = json.dumps(meta) + '\n\n' + body
        self.assertEqual(verify_pages(calls[:1], body, 12288, expected_error=True)['pages'], 1)


if __name__ == '__main__':
    unittest.main()
