/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Diagnostic
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.sphinx.emf.resource.ExtendedResourceAdapter
 */
package org.artop.aal.common.resource.impl;

import java.util.HashMap;
import java.util.Map;
import org.artop.aal.common.internal.messages.Messages;
import org.artop.aal.common.preferences.IAutosarPreferences;
import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.sphinx.emf.resource.ExtendedResourceAdapter;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExtendedAutosarResourceAdapter
extends ExtendedResourceAdapter {
    public void unloaded(EObject eObject) {
        AutosarObjectUtil.clearDest(eObject);
        super.unloaded(eObject);
    }

    public URI getURI(EObject oldOwner, EStructuralFeature oldOwnerContainingFeature, EObject eObject) {
        if (oldOwner != null && oldOwnerContainingFeature != null && eObject.eContainer() == null) {
            return AutosarURIFactory.getURI(oldOwner, oldOwnerContainingFeature, eObject);
        }
        return AutosarURIFactory.getURI(eObject);
    }

    public Map<Object, Object> getProblemHandlingOptions() {
        if (this.problemHandlingOptions == null) {
            this.problemHandlingOptions = new HashMap();
            if (((Boolean)IAutosarPreferences.LIMIT_PROBLEM_INDICATION_ON_LOAD.get()).booleanValue()) {
                this.problemHandlingOptions.put("MAX_PROBLEM_MARKER_COUNT", IAutosarPreferences.MAX_PROBLEM_REPORTED_ON_LOAD.get());
            } else {
                this.problemHandlingOptions.put("MAX_PROBLEM_MARKER_COUNT", OPTION_MAX_PROBLEM_MARKER_COUNT_UNLIMITED);
            }
            this.problemHandlingOptions.put("XML_VALIDITY_PROBLEM_SEVERITY", IAutosarPreferences.XSD_VALIDATION_SEVERITY_LEVEL.get());
            this.problemHandlingOptions.put("XML_WELLFORMEDNESS_PROBLEM_FORMAT_STRING", Messages.ARData00001);
            this.problemHandlingOptions.put("XML_VALIDITY_PROBLEM_FORMAT_STRING", Messages.ARData00002);
        }
        return this.problemHandlingOptions;
    }

    public Diagnostic validateURI(String uri) {
        Diagnostic diagnostic = super.validateURI(uri);
        if (diagnostic != Diagnostic.OK_INSTANCE) {
            return diagnostic;
        }
        return AutosarURIFactory.validateURI(uri);
    }
}

