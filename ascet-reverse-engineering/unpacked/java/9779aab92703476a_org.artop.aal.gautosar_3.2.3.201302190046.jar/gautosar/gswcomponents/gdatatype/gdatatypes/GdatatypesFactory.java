/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gswcomponents.gdatatype.gdatatypes;

import gautosar.gswcomponents.gdatatype.gdatatypes.GdatatypesPackage;
import gautosar.gswcomponents.gdatatype.gdatatypes.impl.GdatatypesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GdatatypesFactory
extends EFactory {
    public static final GdatatypesFactory eINSTANCE = GdatatypesFactoryImpl.init();

    public GdatatypesPackage getGdatatypesPackage();
}

