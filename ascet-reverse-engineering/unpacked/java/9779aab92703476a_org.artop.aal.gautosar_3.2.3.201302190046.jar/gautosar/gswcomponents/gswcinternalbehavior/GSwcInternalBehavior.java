/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package gautosar.gswcomponents.gswcinternalbehavior;

import gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior;
import gautosar.gswcomponents.gcomponents.GAtomicSwComponentType;
import gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity;
import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GPerInstanceMemory;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface GSwcInternalBehavior
extends GInternalBehavior {
    public EList<GRunnableEntity> gGetRunnables();

    public EList<GRTEEvent> gGetEvents();

    public EList<GPerInstanceMemory> gGetPerInstanceMemories();

    public GAtomicSwComponentType gGetComponent();

    public void gSetComponent(GAtomicSwComponentType var1);

    public Boolean gGetSupportsMultipleInstantiation();

    public void gSetSupportsMultipleInstantiation(Boolean var1);

    public void gUnsetSupportsMultipleInstantiation();

    public boolean gIsSetSupportsMultipleInstantiation();
}

