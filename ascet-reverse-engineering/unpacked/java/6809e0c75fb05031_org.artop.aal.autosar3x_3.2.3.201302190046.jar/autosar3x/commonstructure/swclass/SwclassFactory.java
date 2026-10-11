/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.commonstructure.swclass;

import autosar3x.commonstructure.swclass.SwCalprmImpl;
import autosar3x.commonstructure.swclass.SwCalprmPrototype;
import autosar3x.commonstructure.swclass.SwClassAttr;
import autosar3x.commonstructure.swclass.SwClassAttrImpl;
import autosar3x.commonstructure.swclass.SwClassAttrInstanceImpl;
import autosar3x.commonstructure.swclass.SwClassImpl;
import autosar3x.commonstructure.swclass.SwClassInstance;
import autosar3x.commonstructure.swclass.SwClassPrototype;
import autosar3x.commonstructure.swclass.SwServicePrototype;
import autosar3x.commonstructure.swclass.SwVariableImpl;
import autosar3x.commonstructure.swclass.SwVariablePrototype;
import autosar3x.commonstructure.swclass.SwclassPackage;
import autosar3x.commonstructure.swclass.impl.SwclassFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SwclassFactory
extends EFactory {
    public static final SwclassFactory eINSTANCE = SwclassFactoryImpl.init();

    public SwCalprmImpl createSwCalprmImpl();

    public SwCalprmPrototype createSwCalprmPrototype();

    public SwClassAttr createSwClassAttr();

    public SwVariablePrototype createSwVariablePrototype();

    public SwClassPrototype createSwClassPrototype();

    public SwServicePrototype createSwServicePrototype();

    public SwClassAttrImpl createSwClassAttrImpl();

    public SwClassImpl createSwClassImpl();

    public SwVariableImpl createSwVariableImpl();

    public SwClassAttrInstanceImpl createSwClassAttrInstanceImpl();

    public SwClassInstance createSwClassInstance();

    public SwclassPackage getSwclassPackage();
}

