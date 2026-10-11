/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package gautosar.ggenericstructure.ginfrastructure;

import gautosar.ggenericstructure.ginfrastructure.GARPackage;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.FeatureMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface GAUTOSAR
extends EObject {
    public EList<GARPackage> gGetArPackages();

    public FeatureMap gGetMixed();
}

