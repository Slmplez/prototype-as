import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch
import bd_service as service


class PaginationIntegrityTests(unittest.TestCase):
    def setUp(self):
        self.tmp=tempfile.TemporaryDirectory();self.addCleanup(self.tmp.cleanup)
        scope=patch.object(service,'STORE',Path(self.tmp.name));scope.start();self.addCleanup(scope.stop)
        for name in ('documents','cursors','delivery'):(service.STORE/name).mkdir()

    def test_all_budgets_unicode_long_line_and_repeated_cursor(self):
        original='块🙂引用'*5000
        for budget in (2048,4096,8192,16384):
            result=service.paged(original,{'snapshot':'s_'+'1'*32},'session',budget);parts=[];first=None;previous=0
            while True:
                self.assertLessEqual(len(result['content'].encode()),budget)
                h,body=result['content'].split('\n\n',1);meta=json.loads(h);parts.append(body)
                self.assertEqual(meta['page']['start_byte'],previous);previous=meta['page']['end_byte']
                if not meta['page']['has_more']:break
                cursor=meta['page']['next_cursor'];first=first or cursor;result=service.resume(cursor,'session')
            self.assertEqual(''.join(parts),original)
            repeated=json.loads(service.resume(first,'session')['content'].split('\n\n',1)[0])
            self.assertEqual(repeated['delivery']['delivered_bytes'],len(original.encode()))

    def test_cursor_or_metadata_corruption_cannot_splice_observations(self):
        for field in ('offset','document','budget','meta','session'):
            with self.subTest(field=field):
                result=service.paged('中文'*3000,{'snapshot':'original'},'session',2048)
                meta=json.loads(result['content'].split('\n\n',1)[0]);cursor=meta['page']['next_cursor']
                path=service.STORE/('documents' if field=='meta' else 'cursors')/((meta['document'] if field=='meta' else cursor)+'.json')
                value=json.loads(path.read_text(encoding='utf-8'))
                value[field]={'snapshot':'another'} if field=='meta' else -1 if field=='offset' else 16384 if field=='budget' else 'other-session' if field=='session' else 'd_'+'2'*32
                path.write_text(json.dumps(value),encoding='utf-8')
                with self.assertRaises(service.ToolError):service.resume(cursor,'session')

    def test_envelope_uses_budget_without_losing_metadata_or_an_extra_page(self):
        meta={'snapshot':'s_'+'1'*32,'coverage':'all','detail':'metadata'*120}
        original='x'*69700
        response=service.paged(original,meta,'session',16384)
        pages=[];parts=[]
        while True:
            header,body=response['content'].split('\n\n',1);envelope=json.loads(header)
            self.assertLessEqual(len(response['content'].encode('utf-8')),16384)
            for key,value in meta.items():self.assertEqual(envelope[key],value)
            pages.append(envelope);parts.append(body)
            if not envelope['page']['has_more']:break
            self.assertGreater(len(response['content'].encode('utf-8')),16300)
            response=service.resume(envelope['page']['next_cursor'],'session')
        self.assertEqual(len(pages),5)
        self.assertEqual(''.join(parts),original)
        self.assertEqual(pages[-1]['delivery']['delivered_bytes'],69700)


if __name__=='__main__':unittest.main()
