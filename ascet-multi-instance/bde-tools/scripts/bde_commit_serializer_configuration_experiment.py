"""Read the bounded serializer configuration witness from retained native material."""
import argparse
import json
import os
from pathlib import Path

import bd_service as service
from bd_native_structure import NativeStructureAdapter
from bd_serializer_configuration import validate_or_error
from bde_acceptance import source_manifest
from bde_experiments import proxy
from bde_isolated_runtime import live_manifest


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("manifest", "preparation", "output"):
        parser.add_argument("--" + name, type=Path, required=True)
    args = parser.parse_args()
    manifest, _, epoch = live_manifest(args.manifest)
    preparation = json.loads(args.preparation.read_text(encoding="utf-8"))
    if preparation.get("passed") is not True or preparation.get("process_epoch") != epoch:
        raise ValueError("Original live preparation required")
    args.output.mkdir(parents=True, exist_ok=False)
    result = dict(
        passed=False,
        process_epoch=epoch,
        process_started=False,
        process_restarted=False,
        automatic_retry=False,
        full_delivery=False,
        model_edit_verified=False,
        serialization_called=False,
        store_called=False,
        commit_called=False,
        write_authorized=False,
        inverse_authorized=False,
    )
    service.write_once(args.output / "intent.json", result)
    try:
        service.write_once(args.output / "source-manifest.json", source_manifest())
        source = service.ROOT / "scripts/bde_serializer_configuration.st"
        (args.output / "configuration-source.st").write_bytes(source.read_bytes())
        with service.live_lock(), proxy(manifest["port"]) as wire:
            env = dict(
                os.environ,
                ASCET_BD_ENDPOINT_PORT=str(manifest["port"]),
                ASCET_BD_PROBE_PORT=str(wire["port"]),
            )
            with NativeStructureAdapter(preparation["component"], environment=env, timeout=120) as adapter:
                before = adapter.observe(preparation["domain"], [])
                evidence = adapter._exchange(
                    {"cmd": "commit_serializer_configuration", "token": preparation["native_token"]}
                )
                service.write_once(args.output / "configuration.json", evidence)
                validation = validate_or_error(
                    evidence,
                    expected_token=preparation["native_token"],
                    expected_generation=preparation["domain"].get("generation", 1),
                )
                service.write_once(args.output / "validation.json", validation)
                after = adapter.observe(preparation["domain"], [])
                result.update(
                    typed_graph_unchanged=after == before,
                    native_commands=adapter.commands,
                    profile=evidence.get("profile"),
                    owner_class=validation["owner_class"],
                    source_class=validation["source_class"],
                    omission_sizes=validation["omission_sizes"],
                    replacement_entries={
                        "class": validation["class_replacement_entries"],
                        "instvar": validation["instvar_replacement_entries"],
                        "identity": validation["identity_replacement_entries"],
                    },
                    loading_entries={
                        "relink": validation["loading_relink_size"],
                        "remap": validation["loading_remap_entries"],
                        "mutated": validation["loading_mutated_entries"],
                    },
                    source_record_logical_size=validation["source_record_logical_size"],
                    source_record_allocated_size=validation["source_record_allocated_size"],
                    source_witness_held=evidence.get("source_witness_held"),
                    omission_replacement_strategy_complete=evidence.get("omission_replacement_strategy_complete"),
                )
                result["passed"] = (
                    result["typed_graph_unchanged"]
                    and evidence.get("profile") == "native_serializer_configuration_v1"
                    and evidence.get("serialization_called") is False
                    and evidence.get("store_called") is False
                    and evidence.get("commit_called") is False
                    and evidence.get("write_authorized") is False
                    and evidence.get("inverse_authorized") is False
                    and evidence.get("call_closure_complete") is False
                    and validation["valid"] is True
                )
            result["traffic"] = dict(
                request=wire["request"].result(),
                response=wire["response"].result(),
                errors=wire["errors"],
            )
        if live_manifest(args.manifest)[2] != epoch:
            raise ValueError("Original process epoch changed")
        result["native_source_unchanged"] = source.read_bytes() == (args.output / "configuration-source.st").read_bytes()
        if not result["native_source_unchanged"]:
            raise ValueError("Native configuration source changed during execution")
    except Exception as error:
        result["error"] = repr(error)
        result["passed"] = False
    service.write_once(args.output / "result.json", result)
    print(json.dumps({key: result.get(key) for key in ("passed", "error", "profile", "typed_graph_unchanged")}))
    return 0 if result["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
