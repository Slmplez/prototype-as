/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.Task
 *  org.apache.tools.ant.taskdefs.Ant
 *  org.apache.tools.ant.taskdefs.Property
 *  org.eclipse.pde.internal.build.ant.IScriptRunner
 */
package org.eclipse.pde.internal.build.tasks;

import java.io.File;
import java.util.Iterator;
import java.util.Map;
import org.apache.tools.ant.Task;
import org.apache.tools.ant.taskdefs.Ant;
import org.apache.tools.ant.taskdefs.Property;
import org.eclipse.pde.internal.build.ant.IScriptRunner;

public class AntScriptRunner
implements IScriptRunner {
    private final Task parentTask;

    public AntScriptRunner(Task parent) {
        this.parentTask = parent;
    }

    public void runScript(File script, String target, Map properties) {
        Ant task = new Ant();
        task.setLocation(this.parentTask.getLocation());
        task.setProject(this.parentTask.getProject());
        task.init();
        Iterator iterator = properties.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry entry = iterator.next();
            Property antProperty = task.createProperty();
            antProperty.setName((String)entry.getKey());
            antProperty.setValue((String)entry.getValue());
        }
        task.setTarget(target);
        task.setInheritAll(false);
        task.setInheritRefs(false);
        task.setDir(script.getParentFile());
        task.setAntfile(script.getName());
        task.execute();
    }
}

