/*
 * Decompiled with CFR 0.152.
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucQueryExpression;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;

public interface EcucQuery
extends Identifiable {
    public EcucQueryExpression getEcucQueryExpression();

    public void setEcucQueryExpression(EcucQueryExpression var1);
}

