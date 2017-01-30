using UnityEngine;
using System.Collections;
using UnityEditor;
using UnityEditor.SceneManagement;
using System.Text;
using System.IO;
using System.Text.RegularExpressions;
using System.Collections.Generic;

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

    }
}
