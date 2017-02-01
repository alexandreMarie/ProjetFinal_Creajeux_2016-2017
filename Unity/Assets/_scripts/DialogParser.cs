using UnityEngine;
using System.Collections;
using UnityEditor;
using UnityEditor.SceneManagement;
using System.Text;
using System.IO;
using System.Text.RegularExpressions;
using System.Collections.Generic;
using System;

public class DialogParser : MonoBehaviour
{

    struct DialogLine
    {
        public string name;
        public string content;
        public int pose;
        public string position; // postion on screen
        public string[] options;

        // we can make a constructor inside a struct
        public DialogLine(string Name, string Content, int Pose, string Position)
        {
            name = Name;
            content = Content;
            pose = Pose;
            position = Position;
            options = new string[0];
        }
    }

    List<DialogLine> lines;

    public void Start()
    {
        string file = "Assets/Data/Dialog";
        //string sceneNum = EditorApplication.currentScene; 
        string sceneNum = EditorSceneManager.GetActiveScene().name;
        sceneNum = Regex.Replace(sceneNum, "[^0-9]", "");
        file += sceneNum;
        file += ".txt";

        lines = new List<DialogLine>();

        LoadDialog(file);

    }

    private void LoadDialog(string filename)
    {
        string line = "";
        StreamReader r = new StreamReader(filename);

        using (r)
        {
            do
            {
                line = r.ReadLine();
                if (line != null)
                {
                    string[] lineData = line.Split(';');
                    if (lineData[0] == "Player")
                    {
                        DialogLine lineEntry = new DialogLine(lineData[0], "", 0, "");
                        lineEntry.options = new string[lineData.Length - 1];
                        for (int i = 1; i < lineData.Length; i++)
                        {
                            lineEntry.options[i - 1] = lineData[i];
                        }
                        lines.Add(lineEntry);
                    }
                    else
                    {
                        DialogLine lineEntry = new DialogLine(lineData[0], lineData[1],int.Parse(lineData[2]), lineData[3]);
                        lines.Add(lineEntry);
                    }
                }
            } while (line != string.Empty);
            r.Close();
        }
    }

    public string GetPosition(int lineNumber)
    {
        if (lineNumber < lines.Count)
        {
            return lines[lineNumber].position;
        }
        return "";
    }

    public string GetName(int lineNumber)
    {
        if (lineNumber < lines.Count)
        {
            return lines[lineNumber].name;
        }
        return "";
    }

    public string GetContent(int lineNumber)
    {
        if (lineNumber < lines.Count)
        {
            return lines[lineNumber].content;
        }
        return "";
    }

    public int GetPose(int lineNumber)
    {
        if (lineNumber < lines.Count)
        {
            return lines[lineNumber].pose;
        }
        return 0;
    }

    public string[] GetOptions(int lineNumber)
    {
        if (lineNumber < lines.Count)
        {
            return lines[lineNumber].options;
        }
        return new string[0];
    }
}
