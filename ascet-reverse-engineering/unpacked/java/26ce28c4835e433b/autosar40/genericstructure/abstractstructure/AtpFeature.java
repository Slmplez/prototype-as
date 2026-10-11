/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.abstractstructure;

import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;

public interface AtpFeature
extends Identifiable {
    public AtpClassifier getAtpClassifier();

    public void setAtpClassifier(AtpClassifier var1);
}

