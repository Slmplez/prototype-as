/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.etas.amd.core.util.AbstractAmdComponent
 *  com.etas.amd.core.util.AmdFormulaFactory
 *  com.etas.amd620.core.Formulas.FormulaComplexType
 *  com.etas.amd620.core.Formulas.FormulasType
 *  org.apache.commons.lang.StringUtils
 *  org.eclipse.emf.ecore.resource.ResourceSet
 */
package com.etas.ascet.importer.a2a.util;

import com.etas.amd.core.util.AbstractAmdComponent;
import com.etas.amd.core.util.AmdFormulaFactory;
import com.etas.amd620.core.Formulas.FormulaComplexType;
import com.etas.amd620.core.Formulas.FormulasType;
import com.etas.ascet.importer.a2a.ConvertedComponentCollector;
import com.etas.ascet.importer.a2a.logger.Logger;
import com.etas.ascet.importer.a2a.type.DataTypeMappingUtil;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang.StringUtils;
import org.eclipse.emf.ecore.resource.ResourceSet;

public class ConverterContext {
    private Logger lg;
    private FormulasType formulae;
    private ArrayList<AbstractAmdComponent> amdComponents;
    private ConvertedComponentCollector amdCollection = new ConvertedComponentCollector();
    private List<String> ASWCMappingNames;
    private DataTypeMappingUtil dataTypeMapping;

    public ConverterContext() {
        this.formulae = AmdFormulaFactory.createFormulas();
        this.amdComponents = new ArrayList();
        this.ASWCMappingNames = new ArrayList<String>();
    }

    public FormulasType getFormulae() {
        return this.formulae;
    }

    public void initDataTypeMapping(ResourceSet resSet) {
        this.dataTypeMapping = new DataTypeMappingUtil(resSet);
    }

    public void addFormula(FormulaComplexType f) {
        this.formulae.getFormula().add((Object)f);
    }

    public FormulaComplexType getAmdFormula(String name) {
        for (FormulaComplexType f : this.formulae.getFormula()) {
            if (!StringUtils.equals((String)f.getName(), (String)name)) continue;
            return f;
        }
        return null;
    }

    public ArrayList<AbstractAmdComponent> getAmdComponents() {
        return this.amdComponents;
    }

    public Logger getLogger() {
        return this.lg;
    }

    public ConvertedComponentCollector getAmdCollection() {
        return this.amdCollection;
    }

    public void setLogger(Logger logger) {
        this.lg = logger;
    }

    public List<String> getMappingNames() {
        return this.ASWCMappingNames;
    }

    public void clearMappings() {
        this.ASWCMappingNames.clear();
    }

    public void addMapping(String name) {
        this.ASWCMappingNames.add(name);
    }

    public DataTypeMappingUtil getMappingTable() {
        return this.dataTypeMapping;
    }
}

