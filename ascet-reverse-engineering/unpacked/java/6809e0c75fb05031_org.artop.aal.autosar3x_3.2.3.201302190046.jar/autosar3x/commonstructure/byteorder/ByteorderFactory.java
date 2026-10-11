/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.commonstructure.byteorder;

import autosar3x.commonstructure.byteorder.ByteOrder;
import autosar3x.commonstructure.byteorder.ByteorderPackage;
import autosar3x.commonstructure.byteorder.impl.ByteorderFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ByteorderFactory
extends EFactory {
    public static final ByteorderFactory eINSTANCE = ByteorderFactoryImpl.init();

    public ByteOrder createByteOrder();

    public ByteorderPackage getByteorderPackage();
}

