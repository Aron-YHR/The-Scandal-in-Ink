using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Menu : MonoBehaviour
{
    public void QuitGame()
    {
        Application.Quit();
    }

    public void ContinueGame()
    {
        // load the state of game
    }

    public void GoBackToMenu()
    {
        var currentScene = SceneManager.GetActiveScene().name;
        TransitionManager.Instance.Transition(currentScene, "Menu");

        // save game data
    }

    public void Settings()
    {
        UIManager.Instance.settingPanel.SetActive(true);
        //GameObject.Find("BackToMainMenuButton").SetActive(false);
        UIManager.Instance.HighSortOrder();
    }

    public void StartNewGame()
    {
        //cutsceneAnimator.Play("Newspaper");
        EventHandler.CallStartNewGameEvent(); 
        UIManager.Instance.DesactiveIcons();
    }
}
