/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.genericstructure.generaltemplateclasses.elementcollection.impl;

import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.Collection;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.ElementcollectionFactory;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.ElementcollectionPackage;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.impl.CollectableElementImpl;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.impl.CollectionImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ElementcollectionFactoryImpl
extends EFactoryImpl
implements ElementcollectionFactory {
    public static ElementcollectionFactory init() {
        try {
            ElementcollectionFactory theElementcollectionFactory = (ElementcollectionFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ec");
            if (theElementcollectionFactory != null) {
                return theElementcollectionFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ElementcollectionFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createCollection();
            }
            case 1: {
                return this.createCollectableElement();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Collection createCollection() {
        CollectionImpl collection = new CollectionImpl();
        return collection;
    }

    public CollectableElement createCollectableElement() {
        CollectableElementImpl collectableElement = new CollectableElementImpl();
        return collectableElement;
    }

    public ElementcollectionPackage getElementcollectionPackage() {
        return (ElementcollectionPackage)this.getEPackage();
    }

    @Deprecated
    public static ElementcollectionPackage getPackage() {
        return ElementcollectionPackage.eINSTANCE;
    }
}

