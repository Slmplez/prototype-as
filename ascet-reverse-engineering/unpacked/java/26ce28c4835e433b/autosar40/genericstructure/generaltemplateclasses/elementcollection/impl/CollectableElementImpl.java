/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.genericstructure.generaltemplateclasses.elementcollection.impl;

import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.ElementcollectionPackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import org.eclipse.emf.ecore.EClass;

public class CollectableElementImpl
extends IdentifiableImpl
implements CollectableElement {
    protected CollectableElementImpl() {
    }

    protected EClass eStaticClass() {
        return ElementcollectionPackage.Literals.COLLECTABLE_ELEMENT;
    }
}

