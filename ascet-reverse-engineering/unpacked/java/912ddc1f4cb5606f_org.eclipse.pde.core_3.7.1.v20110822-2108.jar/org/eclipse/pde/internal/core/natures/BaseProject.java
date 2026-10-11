/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.ICommand
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IProjectDescription
 *  org.eclipse.core.resources.IProjectNature
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.PlatformObject
 */
package org.eclipse.pde.internal.core.natures;

import org.eclipse.core.resources.ICommand;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IProjectNature;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.pde.internal.core.PDECore;

public abstract class BaseProject
extends PlatformObject
implements IProjectNature {
    private IProject project;

    protected void addToBuildSpec(String builderID) throws CoreException {
        IProjectDescription description = this.getProject().getDescription();
        ICommand builderCommand = this.getBuilderCommand(description, builderID);
        if (builderCommand == null) {
            ICommand command = description.newCommand();
            command.setBuilderName(builderID);
            this.setBuilderCommand(description, command);
        }
    }

    private ICommand getBuilderCommand(IProjectDescription description, String builderId) {
        ICommand[] commands = description.getBuildSpec();
        int i = 0;
        while (i < commands.length) {
            if (commands[i].getBuilderName().equals(builderId)) {
                return commands[i];
            }
            ++i;
        }
        return null;
    }

    public IProject getProject() {
        return this.project;
    }

    protected IWorkspace getWorkspace() {
        return PDECore.getWorkspace();
    }

    protected void removeFromBuildSpec(String builderID) throws CoreException {
        IProjectDescription description = this.getProject().getDescription();
        ICommand[] commands = description.getBuildSpec();
        int i = 0;
        while (i < commands.length) {
            if (commands[i].getBuilderName().equals(builderID)) {
                ICommand[] newCommands = new ICommand[commands.length - 1];
                System.arraycopy(commands, 0, newCommands, 0, i);
                System.arraycopy(commands, i + 1, newCommands, i, commands.length - i - 1);
                description.setBuildSpec(newCommands);
                return;
            }
            ++i;
        }
    }

    private void setBuilderCommand(IProjectDescription description, ICommand newCommand) throws CoreException {
        ICommand[] newCommands;
        ICommand[] oldCommands = description.getBuildSpec();
        ICommand oldBuilderCommand = this.getBuilderCommand(description, newCommand.getBuilderName());
        if (oldBuilderCommand == null) {
            newCommands = new ICommand[oldCommands.length + 1];
            System.arraycopy(oldCommands, 0, newCommands, 0, oldCommands.length);
            newCommands[oldCommands.length] = newCommand;
        } else {
            int i = 0;
            int max = oldCommands.length;
            while (i < max) {
                if (oldCommands[i] == oldBuilderCommand) {
                    oldCommands[i] = newCommand;
                    break;
                }
                ++i;
            }
            newCommands = oldCommands;
        }
        description.setBuildSpec(newCommands);
        this.getProject().setDescription(description, null);
    }

    public void setProject(IProject project) {
        this.project = project;
    }
}

