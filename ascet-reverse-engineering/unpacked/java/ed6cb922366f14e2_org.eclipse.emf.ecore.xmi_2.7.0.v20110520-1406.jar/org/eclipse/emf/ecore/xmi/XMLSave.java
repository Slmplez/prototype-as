/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.ecore.xmi;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.util.Map;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.xmi.DOMHandler;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.w3c.dom.Document;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface XMLSave {
    public void save(XMLResource var1, OutputStream var2, Map<?, ?> var3) throws IOException;

    public Document save(XMLResource var1, Document var2, Map<?, ?> var3, DOMHandler var4);

    public void save(XMLResource var1, Writer var2, Map<?, ?> var3) throws IOException;

    public static interface XMLTypeInfo {
        public boolean shouldSaveType(EClass var1, EClassifier var2, EStructuralFeature var3);

        public boolean shouldSaveType(EClass var1, EClass var2, EStructuralFeature var3);
    }
}

