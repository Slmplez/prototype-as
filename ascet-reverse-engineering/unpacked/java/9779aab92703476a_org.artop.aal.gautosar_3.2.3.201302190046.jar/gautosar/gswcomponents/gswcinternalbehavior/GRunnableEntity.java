/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package gautosar.gswcomponents.gswcinternalbehavior;

import gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GWaitPoint;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GServerCallPoint;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface GRunnableEntity
extends GExecutableEntity {
    public EList<GWaitPoint> gGetWaitPoints();

    public String gGetSymbol();

    public void gSetSymbol(String var1);

    public void gUnsetSymbol();

    public boolean gIsSetSymbol();

    public EList<GVariableDataPrototype> gGetReadVariables();

    public EList<GVariableDataPrototype> gGetWrittenVariables();

    public EList<GVariableAccess> gGetDataReadAccess();

    public EList<GVariableAccess> gGetDataWriteAccess();

    public EList<GVariableAccess> gGetDataSendPoints();

    public EList<GVariableAccess> gGetDataReceivePoints();

    public EList<GServerCallPoint> gGetServerCallPoints();
}

