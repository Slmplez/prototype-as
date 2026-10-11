/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gcommonstructure.gdatadefproperties;

import gautosar.gcommonstructure.gdatadefproperties.GdatadefpropertiesPackage;
import gautosar.gcommonstructure.gdatadefproperties.impl.GdatadefpropertiesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GdatadefpropertiesFactory
extends EFactory {
    public static final GdatadefpropertiesFactory eINSTANCE = GdatadefpropertiesFactoryImpl.init();

    public GdatadefpropertiesPackage getGdatadefpropertiesPackage();
}

