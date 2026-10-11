/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.util;

import java.util.Arrays;
import java.util.List;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;

final class XMLTypeFeatures {
    public static final EStructuralFeature TEXT = XMLTypePackage.eINSTANCE.getXMLTypeDocumentRoot_Text();
    public static final EStructuralFeature CDATA = XMLTypePackage.eINSTANCE.getXMLTypeDocumentRoot_CDATA();
    public static final EStructuralFeature COMMENT = XMLTypePackage.eINSTANCE.getXMLTypeDocumentRoot_Comment();
    public static final EStructuralFeature PROCESSING_INSTRUCTION = XMLTypePackage.eINSTANCE.getXMLTypeDocumentRoot_ProcessingInstruction();
    public static final FeatureMap.Entry.Internal TEXT_PROTOTYPE = ((EStructuralFeature.Internal)TEXT).getFeatureMapEntryPrototype();
    public static final FeatureMap.Entry.Internal CDATA_PROTOTYPE = ((EStructuralFeature.Internal)CDATA).getFeatureMapEntryPrototype();
    public static final FeatureMap.Entry.Internal COMMENT_PROTOTYPE = ((EStructuralFeature.Internal)COMMENT).getFeatureMapEntryPrototype();
    public static final FeatureMap.Entry.Internal PROCESSING_INSTRUCTION_PROTOTYPE = ((EStructuralFeature.Internal)PROCESSING_INSTRUCTION).getFeatureMapEntryPrototype();
    public static final List<EStructuralFeature> TEXTUAL_FEATURES = Arrays.asList(TEXT, CDATA);

    XMLTypeFeatures() {
    }
}

