/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package gautosar.gswcomponents.gswcinternalbehavior.grteevents;

import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface GWaitPoint
extends GIdentifiable {
    public Double gGetTimeout();

    public void gSetTimeout(Double var1);

    public void gUnsetTimeout();

    public boolean gIsSetTimeout();

    public EList<GRTEEvent> gGetTriggers();
}

