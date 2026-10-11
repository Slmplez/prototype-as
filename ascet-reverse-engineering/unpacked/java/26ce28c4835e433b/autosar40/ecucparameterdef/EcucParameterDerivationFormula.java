/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucDerivationSpecification;
import autosar40.ecucparameterdef.EcucQuery;
import autosar40.genericstructure.formulalanguage.FormulaExpression;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcucParameterDerivationFormula
extends FormulaExpression {
    public EcucDerivationSpecification getEcucDerivationSpecification();

    public void setEcucDerivationSpecification(EcucDerivationSpecification var1);

    public EList<EcucQuery> getEcucQueries();

    public EList<EcucQuery> getEcucQueryStrings();
}

