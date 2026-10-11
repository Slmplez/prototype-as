/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore;

import java.util.Map;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.impl.EPackageRegistryImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EPackage
extends ENamedElement {
    public String getNsURI();

    public void setNsURI(String var1);

    public String getNsPrefix();

    public void setNsPrefix(String var1);

    public EFactory getEFactoryInstance();

    public void setEFactoryInstance(EFactory var1);

    public EList<EClassifier> getEClassifiers();

    public EList<EPackage> getESubpackages();

    public EPackage getESuperPackage();

    public EClassifier getEClassifier(String var1);

    public static interface Descriptor {
        public EPackage getEPackage();

        public EFactory getEFactory();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface Registry
    extends Map<String, Object> {
        public static final Registry INSTANCE = EPackageRegistryImpl.createGlobalRegistry();

        public EPackage getEPackage(String var1);

        public EFactory getEFactory(String var1);
    }
}

