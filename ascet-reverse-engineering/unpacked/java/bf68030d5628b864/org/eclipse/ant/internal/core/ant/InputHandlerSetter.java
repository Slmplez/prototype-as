/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Project
 *  org.apache.tools.ant.input.DefaultInputHandler
 *  org.apache.tools.ant.input.InputHandler
 */
package org.eclipse.ant.internal.core.ant;

import java.text.MessageFormat;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.input.DefaultInputHandler;
import org.apache.tools.ant.input.InputHandler;
import org.eclipse.ant.internal.core.ant.InternalAntMessages;

class InputHandlerSetter {
    InputHandlerSetter() {
    }

    protected void setInputHandler(Project project, String inputHandlerClassname) {
        DefaultInputHandler handler = null;
        if (inputHandlerClassname == null) {
            handler = new DefaultInputHandler();
        } else {
            try {
                handler = (InputHandler)Class.forName(inputHandlerClassname).newInstance();
            }
            catch (ClassCastException e) {
                String msg = MessageFormat.format(InternalAntMessages.InternalAntRunner_handler_does_not_implement_InputHandler5, inputHandlerClassname);
                throw new BuildException(msg, (Throwable)e);
            }
            catch (Exception e) {
                String msg = MessageFormat.format(InternalAntMessages.InternalAntRunner_Unable_to_instantiate_input_handler_class, inputHandlerClassname, e.getClass().getName());
                throw new BuildException(msg, (Throwable)e);
            }
        }
        project.setInputHandler((InputHandler)handler);
        project.setProjectReference((Object)handler);
    }
}

