/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.Graphic;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.Map;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguageSpecific;

public interface LGraphic
extends LanguageSpecific {
    public Graphic getGraphic();

    public void setGraphic(Graphic var1);

    public Map getMap();

    public void setMap(Map var1);
}

