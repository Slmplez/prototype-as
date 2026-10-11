/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gcomponents.ginstancerefs;

import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype;
import gautosar.gswcomponents.gcomponents.GRPortPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GModeGroupInAtomicSwcIRef;

public interface GRModeGroupInAtomicSwcIRef
extends GModeGroupInAtomicSwcIRef {
    public GRPortPrototype gGetContextRPort();

    public void gSetContextRPort(GRPortPrototype var1);

    public GModeDeclarationGroupPrototype gGetTargetModeGroup();

    public void gSetTargetModeGroup(GModeDeclarationGroupPrototype var1);
}

