"""Offline guards for matrix requests sharing one native ASCET registry."""
from pathlib import Path
import unittest

from bd_edit_journal import fingerprint
from bde_message_lifecycle_matrix import ALL_CASES,stage_paths,check_creation_identity


DOMAIN=dict(session='study',database='isolated-db',process_epoch='retained-epoch',oid='module-oid')


def receipt(output):
    domain={**DOMAIN,'session':output.name}
    token='edit_'+fingerprint(dict(domain=domain,request_id=output.name+'-forward'))
    return dict(domain=domain,native_token=token,edit=dict(change_id=token))


class MessageMatrixIdentityTests(unittest.TestCase):
    def test_all36_native_creation_requests_and_all_stages_are_distinct(self):
        names=set();tokens=set()
        for case in ALL_CASES:
            paths=stage_paths(Path('matrix-test'),case)
            for path in paths.values():
                self.assertNotIn(path.name,names);names.add(path.name)
                self.assertLessEqual(len(path.name+'-forward'),256)
            check_creation_identity(receipt(paths['create']),paths['create'],DOMAIN,tokens)
        self.assertEqual(len(names),288);self.assertEqual(len(tokens),36)

    def test_same_leaf_under_different_matrix_roots_has_distinct_native_request(self):
        case=ALL_CASES[0]
        left=stage_paths(Path('run-a/matrix'),case)['create']
        right=stage_paths(Path('run-b/matrix'),case)['create']
        self.assertNotEqual(receipt(left)['native_token'],receipt(right)['native_token'])

    def test_all_delivery_temp_files_fit_native_windows_path_limit(self):
        output=Path('E:/Repo/ASCET/analysis/bde-experiments/2026-10-06/bde-message-lifecycle-matrix-03')
        for case in ALL_CASES:
            for path in stage_paths(output,case).values():
                temp=path/'store/delivery'/('f'*64+'.'+'e'*32+'.tmp')
                self.assertLess(len(str(temp)),260,(case,temp))

    def test_wrong_case_or_epoch_receipt_is_refused(self):
        left=stage_paths(Path('matrix-test'),ALL_CASES[0])['create']
        right=stage_paths(Path('matrix-test'),ALL_CASES[1])['create']
        seen=set()
        with self.assertRaises(ValueError):check_creation_identity(receipt(left),right,DOMAIN,seen)
        changed=receipt(left);changed['domain']['process_epoch']='different-epoch'
        with self.assertRaises(ValueError):check_creation_identity(changed,left,DOMAIN,seen)
        self.assertEqual(seen,set())

    def test_duplicate_native_token_is_refused_even_with_separate_store(self):
        output=stage_paths(Path('matrix-test'),ALL_CASES[0])['create'];seen=set()
        value=receipt(output)
        check_creation_identity(value,output,DOMAIN,seen)
        with self.assertRaises(ValueError):check_creation_identity(value,output,DOMAIN,seen)
        self.assertEqual(len(seen),1)


if __name__=='__main__':unittest.main()
