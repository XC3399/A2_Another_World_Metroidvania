using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Unity.VisualScripting;


public class enemySpawner : MonoBehaviour
{

    public GameObject enemy;
    public int xPos;
    public int zPos;
    public int enemyCount;

    public GameObject newObject;
    public int num;

    // Start is called before the first frame update
    void Start()
    {
    }

    private void Update()
    {
        enemyCount = (int)Variables.ActiveScene.Get("numOfEnemys");

        StartCoroutine(spawnEnemy());

    }

        IEnumerator spawnEnemy()
        {
            if (enemyCount < 13)
            {
                xPos = Random.Range(-100, -81);
                zPos = Random.Range(50, 80);
                newObject = Instantiate(enemy, new Vector3(xPos, 0.53f, zPos), Quaternion.identity);
                newObject.name = "name-" + num;
                num++;
                yield return new WaitForSeconds(2.5f);

            }

        }
    
}
