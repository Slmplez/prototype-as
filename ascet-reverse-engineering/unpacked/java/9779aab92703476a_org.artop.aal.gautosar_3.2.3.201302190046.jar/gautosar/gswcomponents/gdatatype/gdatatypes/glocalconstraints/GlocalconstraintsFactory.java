/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints;

import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GlocalconstraintsPackage;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.impl.GlocalconstraintsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GlocalconstraintsFactory
extends EFactory {
    public static final GlocalconstraintsFactory eINSTANCE = GlocalconstraintsFactoryImpl.init();

    public GlocalconstraintsPackage getGlocalconstraintsPackage();
}

