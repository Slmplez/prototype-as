/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gswcomponents.gdatatype.gdataprototypes;

import gautosar.gswcomponents.gdatatype.gdataprototypes.GdataprototypesPackage;
import gautosar.gswcomponents.gdatatype.gdataprototypes.impl.GdataprototypesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GdataprototypesFactory
extends EFactory {
    public static final GdataprototypesFactory eINSTANCE = GdataprototypesFactoryImpl.init();

    public GdataprototypesPackage getGdataprototypesPackage();
}

