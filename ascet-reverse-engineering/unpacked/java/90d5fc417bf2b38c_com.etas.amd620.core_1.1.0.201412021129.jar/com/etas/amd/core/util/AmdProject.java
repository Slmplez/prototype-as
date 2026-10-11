/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.util;

import com.etas.amd.core.AmdFileExtensions;
import com.etas.amd.core.component.AmdFormulaFragment;
import com.etas.amd.core.component.AmdProjectFragment;
import com.etas.amd.core.serializer.ComponentProjectSerializer;
import com.etas.amd.core.serializer.FormulaSerializer;
import com.etas.amd.core.type.AmdComponentType;
import com.etas.amd.core.type.AmdDtType;
import com.etas.amd.core.util.AbstractAmdComponent;
import com.etas.amd.core.util.AmdFactory;
import com.etas.amd620.core.ComponentMain.ElementAttributesT;
import com.etas.amd620.core.ComponentMain.ElementT;
import com.etas.amd620.core.ComponentMain.ScopeType;
import com.etas.amd620.core.Formulas.FormulasType;
import java.io.File;
import java.io.IOException;

public class AmdProject
extends AbstractAmdComponent {
    private final AmdFormulaFragment amdFormulaFragment;
    private final AmdProjectFragment amdProjectFragment;

    public AmdProject(String name, String uuid, String nameSpace, String asdOSID, FormulasType formulae) {
        super(name);
        this.getAmdMainFragment().setProject(name, uuid, nameSpace);
        this.getAmdSpecificationFragment().setProjectSpec();
        this.amdFormulaFragment = new AmdFormulaFragment(formulae);
        this.amdProjectFragment = new AmdProjectFragment(asdOSID);
    }

    public void addComplexElement(String name, String typeRef) {
        AmdComponentType compType = new AmdComponentType(typeRef);
        ElementT element = AmdFactory.createComplexElement(name, compType.createModelAttributes());
        this.addImplementation(compType.createImplAttributes(name));
        this.addElement(element);
    }

    public void addDT() {
        ElementT element = AmdFactory.createElement("dT", null);
        AmdDtType amdType = new AmdDtType();
        ElementAttributesT attributesT = amdType.createModelAttributes();
        AmdFactory.setDirectionAttributes(attributesT, true, false);
        AmdFactory.setSetGetAttributes(attributesT, false, false);
        AmdFactory.setCalibration(attributesT, true, false);
        AmdFactory.setScope(attributesT, ScopeType.EXPORTED);
        element.setElementAttributes(attributesT);
        this.addElement(element);
        this.addImplementation(amdType.createImplAttributes("dT"));
    }

    @Override
    public void save(String rootPath) {
        super.save(rootPath);
        File folder = this.getFolderPath(rootPath);
        String fileName = this.getName();
        try {
            if (this.amdFormulaFragment.isDefined()) {
                this.amdProjectFragment.updateProjectConfigWithFormula(String.valueOf(fileName) + AmdFileExtensions.Formulas.getSuffix());
                FormulaSerializer.save(folder, this.amdFormulaFragment.getDocumentRoot(), fileName);
            }
            ComponentProjectSerializer.save(folder, this.amdProjectFragment.getDocumentRoot(), fileName);
        }
        catch (IOException ex) {
            throw new IllegalStateException(String.format("Problem occur during writing the file %s in %s", fileName, folder), ex);
        }
    }
}

