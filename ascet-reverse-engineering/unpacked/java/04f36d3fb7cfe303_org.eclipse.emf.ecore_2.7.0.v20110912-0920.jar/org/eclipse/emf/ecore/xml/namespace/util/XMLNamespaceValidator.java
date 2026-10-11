/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.BasicDiagnostic
 *  org.eclipse.emf.common.util.Diagnostic
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.ResourceLocator
 */
package org.eclipse.emf.ecore.xml.namespace.util;

import java.util.Map;
import org.eclipse.emf.common.util.BasicDiagnostic;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.util.EObjectValidator;
import org.eclipse.emf.ecore.xml.namespace.SpaceType;
import org.eclipse.emf.ecore.xml.namespace.XMLNamespaceDocumentRoot;
import org.eclipse.emf.ecore.xml.namespace.XMLNamespacePackage;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.eclipse.emf.ecore.xml.type.util.XMLTypeValidator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class XMLNamespaceValidator
extends EObjectValidator {
    public static final XMLNamespaceValidator INSTANCE = new XMLNamespaceValidator();
    public static final String DIAGNOSTIC_SOURCE = "org.eclipse.emf.ecore.xml.namespace";
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 0;
    protected static final int DIAGNOSTIC_CODE_COUNT = 0;
    protected XMLTypeValidator xmlTypeValidator = XMLTypeValidator.INSTANCE;

    @Override
    protected EPackage getEPackage() {
        return XMLNamespacePackage.eINSTANCE;
    }

    @Override
    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateXMLNamespaceDocumentRoot((XMLNamespaceDocumentRoot)value, diagnostics, context);
            }
            case 1: {
                return this.validateSpaceType((SpaceType)((Object)value), diagnostics, context);
            }
            case 2: {
                return this.validateLangType((String)value, diagnostics, context);
            }
            case 3: {
                return this.validateLangTypeNull((String)value, diagnostics, context);
            }
            case 4: {
                return this.validateSpaceTypeObject((SpaceType)((Object)value), diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateXMLNamespaceDocumentRoot(XMLNamespaceDocumentRoot xmlNamespaceDocumentRoot, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(xmlNamespaceDocumentRoot, diagnostics, context);
    }

    public boolean validateSpaceType(SpaceType spaceType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateLangType(String langType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateLangType_MemberTypes(langType, diagnostics, context);
        return result;
    }

    public boolean validateLangType_MemberTypes(String langType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (diagnostics != null) {
            BasicDiagnostic tempDiagnostics = new BasicDiagnostic();
            if (XMLTypePackage.Literals.LANGUAGE.isInstance(langType) && this.xmlTypeValidator.validateLanguage(langType, (DiagnosticChain)tempDiagnostics, context)) {
                return true;
            }
            if (XMLNamespacePackage.Literals.LANG_TYPE_NULL.isInstance(langType) && this.validateLangTypeNull(langType, (DiagnosticChain)tempDiagnostics, context)) {
                return true;
            }
            for (Diagnostic diagnostic : tempDiagnostics.getChildren()) {
                diagnostics.add(diagnostic);
            }
        } else {
            if (XMLTypePackage.Literals.LANGUAGE.isInstance(langType) && this.xmlTypeValidator.validateLanguage(langType, null, context)) {
                return true;
            }
            if (XMLNamespacePackage.Literals.LANG_TYPE_NULL.isInstance(langType) && this.validateLangTypeNull(langType, null, context)) {
                return true;
            }
        }
        return false;
    }

    public boolean validateLangTypeNull(String langTypeNull, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateSpaceTypeObject(SpaceType spaceTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public ResourceLocator getResourceLocator() {
        return EcorePlugin.INSTANCE;
    }
}

