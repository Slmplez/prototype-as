/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gcomponents.ginstancerefs;

import gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomponents.GRPortPrototype;

public interface GRModeInAtomicSwcIRef
extends GARObject {
    public GRPortPrototype gGetContextRPort();

    public void gSetContextRPort(GRPortPrototype var1);

    public GModeDeclarationGroupPrototype gGetContextModeDeclarationGroupPrototype();

    public void gSetContextModeDeclarationGroupPrototype(GModeDeclarationGroupPrototype var1);

    public GModeDeclaration gGetTargetModeDeclaration();

    public void gSetTargetModeDeclaration(GModeDeclaration var1);
}

