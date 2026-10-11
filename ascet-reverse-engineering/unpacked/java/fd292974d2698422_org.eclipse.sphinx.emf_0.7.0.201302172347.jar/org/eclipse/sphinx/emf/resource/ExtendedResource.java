/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Diagnostic
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.sphinx.emf.resource;

import java.util.Map;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.sphinx.emf.internal.messages.Messages;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ExtendedResource {
    public static final String URI_SCHEME_SEPARATOR = ":";
    public static final String URI_SEGMENT_SEPARATOR = "/";
    public static final String URI_QUERY_SEPARATOR = "?";
    public static final String URI_KEY_VALUE_SEPARATOR = "=";
    public static final String URI_FRAGMENT_SEPARATOR = "#";
    public static final String OPTION_RESOURCE_VERSION_DESCRIPTOR = "RESOURCE_VERSION_DESCRIPTOR";
    public static final String OPTION_TARGET_METAMODEL_DESCRIPTOR_ID = "TARGET_METAMODEL_DESCRIPTOR_ID";
    public static final String OPTION_SCHEMA_LOCATION_CATALOG = "SCHEMA_LOCATION_CATALOG";
    public static final String OPTION_ENABLE_SCHEMA_VALIDATION = "ENABLE_SCHEMA_VALIDATION";
    public static final String OPTION_MAX_PROBLEM_MARKER_COUNT = "MAX_PROBLEM_MARKER_COUNT";
    public static final Integer OPTION_MAX_PROBLEM_MARKER_COUNT_DEFAULT = 10;
    public static final Integer OPTION_MAX_PROBLEM_MARKER_COUNT_UNLIMITED = -1;
    public static final String OPTION_XML_WELLFORMEDNESS_PROBLEM_FORMAT_STRING = "XML_WELLFORMEDNESS_PROBLEM_FORMAT_STRING";
    public static final String OPTION_XML_WELLFORMEDNESS_PROBLEM_FORMAT_STRING_DEFAULT = Messages.msg_xmlWellformednessProblemFormatString;
    public static final String OPTION_XML_VALIDITY_PROBLEM_FORMAT_STRING = "XML_VALIDITY_PROBLEM_FORMAT_STRING";
    public static final String OPTION_XML_VALIDITY_PROBLEM_FORMAT_STRING_DEFAULT = Messages.msg_xmlValidityProblemFormatString;
    public static final String OPTION_XML_VALIDITY_PROBLEM_SEVERITY = "XML_VALIDITY_PROBLEM_SEVERITY";
    public static final String OPTION_UNLOAD_MEMORY_OPTIMIZED = "UNLOAD_MEMORY_OPTIMIZED";

    public Map<Object, Object> getDefaultLoadOptions();

    public Map<Object, Object> getDefaultSaveOptions();

    public Map<Object, Object> getProblemHandlingOptions();

    public void unloaded(EObject var1);

    public URI getURI(EObject var1);

    public URI getURI(EObject var1, EStructuralFeature var2, EObject var3);

    public Diagnostic validateURI(String var1);
}

