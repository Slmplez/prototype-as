"""Build and validate independent Module message finalization; no live ASCET calls."""
import argparse
import json
from pathlib import Path
import shutil
import subprocess
import sys

import bd_service as service
from bd_native_structure import NativeStructureAdapter
from bde_acceptance import source_manifest
from bde_main_workflow import build_oracle, save_new


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--recovery',action='store_true',help='Include controls derived from passed real v5 finalization WAL')
    args=parser.parse_args();output=args.output.resolve()
    if output.exists() or not output.is_relative_to(service.ROOT/'analysis/bde-experiments'):
        raise ValueError('Fresh owned offline validation directory required')
    output.mkdir(parents=True)
    result=dict(passed=False,scope='Independent message original-declaration finalizer offline controls/build only',
        online_calls=0,source_manifest=source_manifest(),message_finalization_live_verified=False,
        original_restored=False,complete_case_pass=False,full_delivery=False)
    for rel in result['source_manifest']:
        target=output/'source'/rel;target.parent.mkdir(parents=True,exist_ok=True)
        shutil.copyfile(service.ROOT/rel,target)
    command=[sys.executable,'-X','utf8','-m','unittest','test_bd_message_declaration_finalize',
        'test_bd_message_declaration_history','test_bd_message_create_history',
        'test_bd_enum_declaration_finalize','test_bd_enum_finalize_recovery',
        'test_bd_declaration_finalize','test_bd_declaration_finalize_journal']
    if args.recovery:command=command[:5]+['test_bd_message_finalize_recovery']
    tests=subprocess.run(command,cwd=service.ROOT/'scripts',capture_output=True,text=True,encoding='utf-8')
    save_new(output/'offline-tests.json',dict(command=command,exit_code=tests.returncode,stdout=tests.stdout,stderr=tests.stderr))
    result['tests_passed']=tests.returncode==0
    if result['tests_passed']:
        try:
            result['production_bridge']=str(NativeStructureAdapter.build())
            result['eval_bridge']=str(build_oracle(output))
            result['production_and_eval_build_passed']=True
        except Exception as error:result['build_error']=str(error)
    result['sources_match']=source_manifest()==result['source_manifest']
    result['passed']=result['tests_passed'] and result.get('production_and_eval_build_passed') is True and result['sources_match']
    save_new(output/'result.json',result)
    print(json.dumps({k:result.get(k) for k in ('passed','tests_passed','build_error','online_calls','sources_match')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
