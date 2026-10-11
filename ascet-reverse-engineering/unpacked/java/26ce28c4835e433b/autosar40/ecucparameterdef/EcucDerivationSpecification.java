/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucParameterDef;
import autosar40.ecucparameterdef.EcucParameterDerivationFormula;
import autosar40.ecucparameterdef.EcucQuery;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.MlFormula;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcucDerivationSpecification
extends ARObject {
    public EcucParameterDef getEcucParameterDef();

    public void setEcucParameterDef(EcucParameterDef var1);

    public EcucParameterDerivationFormula getCalculationFormula();

    public void setCalculationFormula(EcucParameterDerivationFormula var1);

    public EList<EcucQuery> getEcucQueries();

    public MlFormula getInformalFormula();

    public void setInformalFormula(MlFormula var1);
}

