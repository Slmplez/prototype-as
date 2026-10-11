/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 */
package gautosar.util;

import gautosar.util.GAutosarPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;

public class GAutosarFactory
extends EFactoryImpl
implements EFactory {
    public static final GAutosarFactory eINSTANCE = new GAutosarFactory();

    public EPackage getEPackage() {
        if (this.ePackage == null) {
            this.ePackage = GAutosarPackage.eINSTANCE;
        }
        return this.ePackage;
    }

    public EObject create(EClass eClass) {
        EObject result = null;
        if (eClass.eContainer() instanceof EPackage) {
            result = ((EPackage)eClass.eContainer()).getEFactoryInstance().create(eClass);
        }
        return result;
    }
}

