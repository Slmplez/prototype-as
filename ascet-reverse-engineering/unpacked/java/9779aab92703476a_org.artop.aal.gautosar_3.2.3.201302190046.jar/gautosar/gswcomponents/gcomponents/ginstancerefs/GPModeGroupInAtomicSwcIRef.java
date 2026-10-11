/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gcomponents.ginstancerefs;

import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype;
import gautosar.gswcomponents.gcomponents.GPPortPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GModeGroupInAtomicSwcIRef;

public interface GPModeGroupInAtomicSwcIRef
extends GModeGroupInAtomicSwcIRef {
    public GPPortPrototype gGetContextPPort();

    public void gSetContextPPort(GPPortPrototype var1);

    public GModeDeclarationGroupPrototype gGetTargetModeGroup();

    public void gSetTargetModeGroup(GModeDeclarationGroupPrototype var1);
}

