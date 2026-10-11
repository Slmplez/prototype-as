/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.serviceneeds;

import autosar40.commonstructure.serviceneeds.DiagnosticEventNeeds;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;

public interface DiagEventDebounceAlgorithm
extends Identifiable {
    public DiagnosticEventNeeds getDiagnosticEventNeeds();

    public void setDiagnosticEventNeeds(DiagnosticEventNeeds var1);
}

