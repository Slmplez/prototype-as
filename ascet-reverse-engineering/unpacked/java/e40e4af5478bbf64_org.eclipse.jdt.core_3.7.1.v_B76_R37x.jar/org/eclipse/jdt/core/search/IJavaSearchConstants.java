/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.search;

public interface IJavaSearchConstants {
    public static final int UNKNOWN = -1;
    public static final int TYPE = 0;
    public static final int METHOD = 1;
    public static final int PACKAGE = 2;
    public static final int CONSTRUCTOR = 3;
    public static final int FIELD = 4;
    public static final int CLASS = 5;
    public static final int INTERFACE = 6;
    public static final int ENUM = 7;
    public static final int ANNOTATION_TYPE = 8;
    public static final int CLASS_AND_ENUM = 9;
    public static final int CLASS_AND_INTERFACE = 10;
    public static final int INTERFACE_AND_ANNOTATION = 11;
    public static final int DECLARATIONS = 0;
    public static final int IMPLEMENTORS = 1;
    public static final int REFERENCES = 2;
    public static final int ALL_OCCURRENCES = 3;
    public static final int READ_ACCESSES = 4;
    public static final int WRITE_ACCESSES = 5;
    public static final int IGNORE_DECLARING_TYPE = 16;
    public static final int IGNORE_RETURN_TYPE = 32;
    public static final int FIELD_DECLARATION_TYPE_REFERENCE = 64;
    public static final int LOCAL_VARIABLE_DECLARATION_TYPE_REFERENCE = 128;
    public static final int PARAMETER_DECLARATION_TYPE_REFERENCE = 256;
    public static final int SUPERTYPE_TYPE_REFERENCE = 512;
    public static final int THROWS_CLAUSE_TYPE_REFERENCE = 1024;
    public static final int CAST_TYPE_REFERENCE = 2048;
    public static final int CATCH_TYPE_REFERENCE = 4096;
    public static final int CLASS_INSTANCE_CREATION_TYPE_REFERENCE = 8192;
    public static final int RETURN_TYPE_REFERENCE = 16384;
    public static final int IMPORT_DECLARATION_TYPE_REFERENCE = 32768;
    public static final int ANNOTATION_TYPE_REFERENCE = 65536;
    public static final int TYPE_ARGUMENT_TYPE_REFERENCE = 131072;
    public static final int TYPE_VARIABLE_BOUND_TYPE_REFERENCE = 262144;
    public static final int WILDCARD_BOUND_TYPE_REFERENCE = 524288;
    public static final int INSTANCEOF_TYPE_REFERENCE = 0x100000;
    public static final int SUPER_REFERENCE = 0x1000000;
    public static final int QUALIFIED_REFERENCE = 0x2000000;
    public static final int THIS_REFERENCE = 0x4000000;
    public static final int IMPLICIT_THIS_REFERENCE = 0x8000000;
    public static final int EXACT_MATCH = 0;
    public static final int PREFIX_MATCH = 1;
    public static final int PATTERN_MATCH = 2;
    public static final boolean CASE_SENSITIVE = true;
    public static final boolean CASE_INSENSITIVE = false;
    public static final int FORCE_IMMEDIATE_SEARCH = 1;
    public static final int CANCEL_IF_NOT_READY_TO_SEARCH = 2;
    public static final int WAIT_UNTIL_READY_TO_SEARCH = 3;
}

